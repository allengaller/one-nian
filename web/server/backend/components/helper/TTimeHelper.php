<?php
/**
 * BOSS系统通用的时间字符串处理帮助类
 *
 * @author Wang Han 2015-03-18 10:00:00
 * @version 1.0
 */
namespace backend\components\helpers;

class TTimeHelper
{

    /**
     * 获取当前时间，并且以('Y-m-d H:i:s')格式化输出
     *
     * @return bool|string
     */
    public static function getCurrentTime()
    {
        date_default_timezone_set('PRC');
        return date('Y-m-d H:i:s', time());
    }

    /**
     * 输入日期格式的参数，以('Y-m-d')格式输出
     *
     * @param string $time
     * @param string $format
     */
    public static function showTime($time, $format = 'Y-m-d')
    {
        echo date($format, strtotime($time));
    }

    /**
     * 输入时间戳格式的参数，以('Y-m-d H:i:s')格式输出
     *
     * @param int $time
     * @param string $format
     */
    public static function showTimeByTimeStamp($time, $format = 'Y-m-d H:i:s')
    {
        echo date($format, $time);
    }
}