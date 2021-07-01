<?php

return [
    'ROLE' => [
        'ADMIN' => 1,
        'USER' => 2,
    ],
    'TRANSACTION' => [
        1 => 'Vừa tiếp nhận',
        2 => 'Đang vận chuyển',
        3 => 'Đã bàn giao',
        -1 => 'Đã hủy'
    ],
    'TRANSACTION_GET_STATUS' => [
        'default' => 1,
        'transported' => 2,
        'success' => 3,
        'cancel' => -1
    ],
    'DEFAULT_MENU' => [
        'default' => 1
    ],
    'STATUS' => [
        'active' => 1,
        'none' => 0
    ],
    'HOT' => [
        'hot' => 1,
        'none' => 0
    ],
    'ID_CATEGORY_DEFAULT' => [
        'DHCH' => 1,
        'KM' => 2,
        'PKDH' => 3
    ]
];
