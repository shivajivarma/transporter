/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.utils;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

import java.io.IOException;
import java.util.Properties;

public class WebPropertiesUtil {

    private static WebPropertiesUtil ourInstance = new WebPropertiesUtil();

    public static WebPropertiesUtil getInstance() {
        return ourInstance;
    }

    private WebPropertiesUtil() {
        Resource resource = new ClassPathResource("label.properties");
        try {
            labelProperties = PropertiesLoaderUtils.loadProperties(resource);
        } catch (IOException e) {
            System.out.println("[ Unable to load label.properties ]");
        }
    }

    private Properties labelProperties;

    public String getLabel(String key) {
        return labelProperties.getProperty(key);
    }
}
