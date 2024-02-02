# 🐻‍❄️🪻 helm-charts: Helm Charts available for Noelware's charted project
# Copyright (c) 2023-2024 Noelware, LLC. <team@noelware.org>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

charted {
    # view https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#tilde-requirements
    # to see what `~` is meant since `charted-helm-plugin` uses Cargo's SemVer implementation.
    version = "~ 0.1-beta"
    helm    = "~ 3.12"
}

registry "default" {
    version = 1
    url     = "https://charts.noelware.org/api"
}

repository "charted-server" {
    registry = registry.default
    source   = "${cwd}/charts/charted"
    path     = "charted/server"
}

repository "charted-emails" {
    registry = registry.default
    source   = "${cwd}/charts/emails"
    path     = "charted/emails"
}
