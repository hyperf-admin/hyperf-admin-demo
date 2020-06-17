<?php

declare(strict_types=1);
return [
    'local' => db_complete([
        'host' => env('LOCAL_DB_HOST'),
        'database' => 'test',
        'username' => 'root',
        'password' => 'root',
    ]),
];
