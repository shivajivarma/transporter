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

package codemons.transporter.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class MainController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        model.setViewName("admin");

        return model;

    }

    @RequestMapping(value = "/user**", method = RequestMethod.GET)
    public ModelAndView userPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("page", "dashboard");
        model.setViewName("user");

        return model;

    }

    @RequestMapping(value = "/user/profile", method = RequestMethod.GET)
    public ModelAndView userProfilePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("page", "profile");
        model.setViewName("user");

        return model;

    }

    @RequestMapping(value = "/user/mytrips", method = RequestMethod.GET)
    public ModelAndView userMytripsPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("page", "mytrips");
        model.setViewName("user");

        return model;

    }

}
