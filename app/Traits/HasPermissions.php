<?php

namespace App\Traits;

use App\Models\Role;

trait HasPermissions
{
    protected $permissionList = null;

    public function roles(): \Illuminate\Database\Eloquent\Relations\BelongsToMany
    {
        return $this->belongsToMany(Role::class, 'role_admin', 'admin_id', 'role_id');
    }

    public function hasRole($role): bool
    {
        if (is_string($role)) {
            return $this->roles->contains('name', $role);
        }

        return false;
    }

    public function hasPermission($permission = null)
    {
        if (is_null($permission)) {
            return $this->getPermissions()->count();
        }

        if (is_string($permission)) {
            return $this->getPermissions()->contains('name', $permission);
        }

        return false;
    }

    private function getPermissions(): \Illuminate\Support\Collection
    {
        $role = $this->roles->first();

        if ($role) {
            if (!$role->relationLoaded('permissions')) {
                $this->roles->load('permissions');
            }
            $this->permissionList = $this->roles->pluck('permissions')->flatten();
        }

        return $this->permissionList ?? collect();
    }
}