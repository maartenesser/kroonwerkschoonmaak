require("@rails/ujs").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";
import "jquery";
import "lity";
import AOS from "aos";
import onscroll from "./onscroll";


AOS.init({
    disable: 'mobile',
    duration: 600,
    once: true
});

onscroll();