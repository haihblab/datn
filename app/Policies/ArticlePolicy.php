<?php

namespace App\Policies;

use App\Models\Article;
use App\Models\Admin;
use Illuminate\Auth\Access\HandlesAuthorization;

class ArticlePolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param Admin $admin
     * @return void
     */
    public function viewAny(Admin $admin)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param Admin $admin
     * @param Article $article
     * @return bool
     */
    public function view(Admin $admin, Article $article)
    {
        return true;
//        return (
//            ($admin && ($admin->id == $article->admin_id || $admin->hasPermission('show_article')))
//        );
    }

    /**
     * Determine whether the user can create models.
     *
     * @param Admin $admin
     * @return bool
     */
    public function create(Admin $admin)
    {
        return $admin->hasPermission('create_article');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param Admin $admin
     * @param Article $article
     * @return void
     */
    public function update(Admin $admin, Article $article)
    {
        return false;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param Admin $admin
     * @param Article $article
     * @return void
     */
    public function delete(Admin $admin, Article $article)
    {
        //
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param Admin $admin
     * @param Article $article
     * @return void
     */
    public function restore(Admin $admin, Article $article)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param Admin $admin
     * @param Article $article
     * @return void
     */
    public function forceDelete(Admin $admin, Article $article)
    {
        //
    }
}
