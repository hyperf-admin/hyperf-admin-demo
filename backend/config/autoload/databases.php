<?php

declare(strict_types=1);

return [
    'local' => db_complete([
        'host' => env('LOCAL_DB_HOST', env('HYPERF_ADMIN_DB_HOST')),
        'database' => env('LOCAL_DB_NAME', 'test'),
        'username' => env('LOCAL_DB_USER', env('HYPERF_ADMIN_DB_USER')),
        'password' => env('LOCAL_DB_PWD', env('HYPERF_ADMIN_DB_PWD')),
    ]),
];
