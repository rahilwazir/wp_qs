# wp_qs

WordPress Quick Setup with help of WP-CLI.

This script will download, configure/create (wp-config, mysql db), install your wordpress in single command.

## Dependencies

- PHP/MYSQL
- [WP-CLI](https://github.com/wp-cli/wp-cli)

## Install
Download [`wp_qs.sh`](https://raw.githubusercontent.com/rahilwazir/wp_qs/master/wp_qs.sh) file, make it executable and create a symbolic link

```
$ chmod +x /path/to/wp_qs/wp_qs.sh
$ sudo ln -s /path/to/wp_qs/wp_qs.sh /usr/local/bin/wp_qs
```


## Usage

Run from the parent directory where you want your wordpress installation.

```
$ cd /home/user/html/
$ wp_qs // run it
```
After completion
```
$ ls
wp_57e28ac9b909c
```
Your wordpress is ready to serve, depends how you setup, vhost, subdirectory `http://localhost/wp_57e28ac9b909c`

**Note**: More options and customizations are coming..

## License

MIT © [Rahil Wazir](https://github.com/rahilwazir)