# puppet-repo_netbydesign

This Puppet module configures the repositories available at
apt.netbydesign.nz.


# Usage

If you are using r10k, make sure the module is in your Puppetfile

    mod 'danielfaulknor/repo_netbydesign'

In your Puppet manifests (eg site.pp):

    include repo_netbydesign

If you want to include from a specific module (eg SOE) and ensure the repo is
installed before any packages, use:

    require repo_netbydesign

If you wish to change any of the options, eg disable a particular repo or even
override where the packages are pulled from (eg local mirror) the best place
is to override inside Hiera.


# Security

Whilst packages are downloaded via HTTP, all packages using the netbydesign 
repos are GPG signed. The GPG signing public key is included in this Puppet
module, rather than being downloaded via unencrypted methods.


# License

This module is licensed under the Apache License, Version 2.0 (the "License").
See the LICENSE.txt or http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


# Source

https://github.com/jethrocarr/puppet-repo_jethro
