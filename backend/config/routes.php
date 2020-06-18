<?php

declare(strict_types=1);

use App\Controller\StudentScoreController;
use Hyperf\HttpServer\Router\Router;

register_route('/student_score', StudentScoreController::class);

Router::get('/test', function () {
    return config('test', 1111);
});
