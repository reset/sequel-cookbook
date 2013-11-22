# sequel-cookbook

A library cookbook for running Sequel migrations

## Supported Platforms

* Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:sequel][:version]</tt></td>
    <td>String</td>
    <td>Version of Sequel to install (blank is latest)</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

## Usage

To install Sequel include `sequel::default` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sequel::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Jamie Winsor (<jamie@vialstudios.com>)
