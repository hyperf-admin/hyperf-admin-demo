<?php

declare(strict_types=1);


use Hyperf\Apidog\Middleware\ApiValidationMiddleware;

return [
    'http' => [
        ApiValidationMiddleware::class
    ],
];
