# Release 8: Make it Robust

### Learning Competencies

- Utilize Virtual Machines to test webapps cross-platform/cross-browser
- Understand how to fix layout/UI issues in less-capable browsers
- Learn how to build a flexible, robust UI that works in all browsers

### Summary

You've developed a website that's functional, utilizes Rails best practices, and employs CSS frameworks and
toolkits. Your app should be flexible and good-looking, and should be responsive to the size of the display
it's used on.

Let's make sure everything works as intended on *all* widely-supported browsers.

Download and install [Virtualbox](https://www.virtualbox.org/), and then head to [Microsoft's Virtualization Tools](https://www.modern.ie/en-us/virtualization-tools#downloads) and download the Virtualbox image for Windows XP. Follow
their directions for installing the VM image and booting Windows XP.

In addition to testing your site in IE, you should download Firefox and Safari on OSX and test on them as well.

## Features

- Your application should be responsive and viewable both on the desktop and on mobile phones
- Your application should be usable and free of errors on all tested browsers
- Your application should gracefully degrade on features not supported by older browsers (note that CSS3 animations
and HTML5 features fall into this category)