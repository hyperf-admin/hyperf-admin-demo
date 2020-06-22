<?php

declare(strict_types=1);

use App\Controller\StudentScoreController;
use Hyperf\HttpServer\Router\Router;

Router::addRoute(['GET', 'POST', 'HEAD'], '/', 'App\Controller\IndexController@index');

register_route('/student_score', StudentScoreController::class);
