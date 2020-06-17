<?php
namespace App\Service;

use HyperfAdmin\BaseUtils\Log;
use HyperfAdmin\CronCenter\ClassJobAbstract;

class TestCronJob extends ClassJobAbstract
{
    public function handle($params)
    {
        Log::get('cron_center')->info(__METHOD__ . ' execute');
        return $params;
    }
}
