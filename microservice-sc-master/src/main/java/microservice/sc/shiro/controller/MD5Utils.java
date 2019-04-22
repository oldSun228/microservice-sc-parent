package microservice.sc.shiro.controller;

/**
 * @author fgs
 * @data 2019/4/19 10:14
 */

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.util.DigestUtils;

import java.security.NoSuchAlgorithmException;

/**
 * @author CQY13 MD5加密工具类
 */
public class MD5Utils {
    /*
     * 将一个字符串MD5加密，方式很多，我们使用的是Spring包下
     */
    public static String getMd5Simple(String password) {
        String md502 = DigestUtils.md5DigestAsHex(password.getBytes());
        return md502;
    }

    public static String getMd5(String password) {
        /*
         * 原密码加密一次
         * 获取原密码加密后前8位字符
         * 8位字符+加密后的字符串    再加密一次
         */
        String md501 = DigestUtils.md5DigestAsHex(password.getBytes());
        String temp = md501.substring(0, 8);
        String md502 = DigestUtils.md5DigestAsHex((temp + md501).getBytes());
        return md502;
    }


    public static String getMD5(byte[] source) {
        String s = null;
        char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f'};// 用来将字节转换成16进制表示的字符
        try {
            java.security.MessageDigest md = java.security.MessageDigest
                    .getInstance("MD5");
            md.update(source);
            byte tmp[] = md.digest();// MD5 的计算结果是一个 128 位的长整数，
            // 用字节表示就是 16 个字节
            char str[] = new char[16 * 2];// 每个字节用 16 进制表示的话，使用两个字符， 所以表示成 16
            // 进制需要 32 个字符
            int k = 0;// 表示转换结果中对应的字符位置
            for (int i = 0; i < 16; i++) {// 从第一个字节开始，对 MD5 的每一个字节// 转换成 16
                // 进制字符的转换
                byte byte0 = tmp[i];// 取第 i 个字节
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];// 取字节中高 4 位的数字转换,// >>>
                // 为逻辑右移，将符号位一起右移
                str[k++] = hexDigits[byte0 & 0xf];// 取字节中低 4 位的数字转换
            }
            s = new String(str);// 换后的结果转换为字符串
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return s;
    }

    public static void main(String[] args) {
        String hashAlgorithmName = "MD5";
        String credentials = "123456";
        int hashIterations = 1024;
        Object obj = new SimpleHash(hashAlgorithmName, credentials, null, hashIterations);

//
//        String hashAlgorithmName = "MD5";
//        String credentials = "123456";
//        int hashIterations = 1024;
//        ByteSource credentialsSalt = ByteSource.Util.bytes("320113199102286410");
//        Object obj = new SimpleHash(hashAlgorithmName, credentials, credentialsSalt, hashIterations);
        System.out.println(obj);

    }

}