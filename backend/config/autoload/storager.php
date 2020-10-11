<?php

declare(strict_types=1);

return [
    'default' => 'aliyuncs',

    /*
    |--------------------------------------------------------------------------
    | 阿里云oss存储配置
    |--------------------------------------------------------------------------
     */
    'aliyuncs' => [
        'access_key' => env('OSS_ACCESS_KEY', ''),
        'access_key_secret' => env('OSS_ACCESS_KEY_SECRET', ''),
        'bucket' => env('OSS_BUCKET', ''),
        'endpoint' => env('OSS_END_POINT', ''),
        'host' => env('OSS_HOST', ''),
        'path_id' => env('OSS_PATH_ID', ''),
        'cdn' => env('OSS_CDN', ''),
    ],
];
