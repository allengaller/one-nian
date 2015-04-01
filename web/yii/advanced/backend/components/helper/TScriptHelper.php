<?php
/**
 * BOSS系统的Javascript的变量输出的帮助类
 *
 * @author Wang Jia Qi 2015-04-01 10:00:00
 * @version 1.0
 */
namespace backend\components\helpers;

class TScriptHelper
{
    /**
     * 后台的值当Js变量传给页面
     *
     * @param mixed $variable
     * @param string $key
     * @return string
     */
    public static function createJsVariable($variable, $key = "item")
    {
        $str =  "<script type='text/javacript'>\n";

        if (is_array($variable)) {
            foreach($variable as $k => $v) {
                $str .= "var $key.$k = " . $v . ";";
            }
        } else {
            $str .= "var $key = " . $variable . ";";
        }

        $str .= "\n</script>";

        return $str;
    }
}