# \*Deprecation Notice\*

Use [wp-installer](https://github.com/mattgrshaw/wp-installer) instead

# wp_qs

WordPress Quick Setup with help of WP-CLI.

This script will download, configure/create (wp-config, mysql db), install your wordpress in single command.

## Dependencies

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
$ wp_qs # run it
```

After completion

```
$ ls
wp_57e28ac9b909c # Your WP directory
```
Your wordpress is now ready to serve, depends on how you have setup your environment either virtual host or subdirectory.

**Note**: More options and customizations are coming..

## License

MIT © [Rahil Wazir](https://github.com/rahilwazir)*
