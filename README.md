# diff-action

[![Diff Action Test (FILE Passed)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_passed.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_passed.yml) [![Diff Action Test (FILE Failed)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_failed.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_failed.yml)

[![Diff Action Test (LINE Passed)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_passed.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_passed.yml) [![Diff Action Test (LINE Failed)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_failed.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_failed.yml)

![diff-action](https://user-images.githubusercontent.com/22433243/122283163-a4df3180-cec2-11eb-99e1-0561639adf29.png)

Github Action to compare 2 files using [diff](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=diff) 🕵️

* * *

## 🖥 Supported OS

OS | SUPPORTED
---------- | ------------
**LINUX** | YES
**MACOS** | YES
**WINDOWS** | YES

## 📚 How to use this action?

Field | Mandatory | Observation
------------ | ------------  | -------------
**first_file_path** | YES | ex: `path/to/file1.txt`
**second_file_path** | YES | ex: `path/to/file2.txt`
**expected_result** | NO | `PASSED` (default) or `FAILED`
**specific_line** | NO | ex: `1` (integer value only)

**Will return FAIL**: If the `diff` output of the 2 files/lines is different than the `expected_result` input value.

**Will return SUCCESS**: If the `diff` output of the 2 files/lines is equal the `expected_result` input value.

 * * *

### 🕵️📋 Comparing 2 files

#### Expecting files to be identicals

```yaml
    steps:
      - uses: actions/checkout@v2.3.4
      - uses: GuillaumeFalourd/diff-action@v1
        with:
          first_file_path: file1.txt
          second_file_path: file2.txt
          expected_result: PASSED #PASSED is the default VALUE if not informed
```

#### Expecting files to be differents

```yaml
    steps:
      - uses: actions/checkout@v2.3.4
      - uses: GuillaumeFalourd/diff-action@v1
        with:
          first_file_path: file1.txt
          second_file_path: file2.txt
          expected_result: FAILED
```

### 🕵📝 Comparing 2 lines

#### Expecting lines to be identicals

```yaml
    steps:
      - uses: actions/checkout@v2.3.4
      - uses: GuillaumeFalourd/diff-action@v1
        with:
          first_file_path: file1.txt
          second_file_path: file2.txt
          specific_line: 3
          expected_result: PASSED #PASSED is the default VALUE if not informed
```

#### Expecting lines to be differents

```yaml
    steps:
      - uses: actions/checkout@v2.3.4
      - uses: GuillaumeFalourd/diff-action@v1
        with:
          first_file_path: file1.txt
          second_file_path: file2.txt
          specific_line: 3
          expected_result: FAILED
```

### ☑️🔴 Workflow examples returning error

[![Diff Action Test (FILE Error)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_error.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_file_error.yml)

[![Diff Action Test (LINE Error)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_error.yml/badge.svg)](https://github.com/GuillaumeFalourd/diff-action/actions/workflows/test_line_error.yml)

You can add on the workflow the following line at the job level to ignore the errors (as done on the workflows above)

```yaml
    continue-on-error: true # Remove if you want the workflow to fail when error
```

## Licensed

This repository uses the [Apache License 2.0](https://github.com/GuillaumeFalourd/aws-cliaction/blob/main/LICENSE)
