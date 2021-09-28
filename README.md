## maffblaster's overlay 

This repository focuses on bringing the Matrix.org suite to Gentoo along with a few other miscellaneous fancies.

Have improvements? Open a pull request. Any help is appreciated!

### Installation

Each of the following commands will need to be run with elevated permissions as root, with sudo, or an equivalent tool.

#### Manual

This overlay uses the `repos.conf` repository management system. Be sure the repos.conf directory exists: 

`mkdir -p /etc/portage/repos.conf`

Then download the `maffblaster.conf` file in the base of the repos.conf directory using the following command:

`wget https://raw.githubusercontent.com/maffblaster/maffblaster-overlay/master/maffblaster.conf --output-document=/etc/portage/repos.conf/maffblaster.conf`

---

Alternatively `curl` can be employed if `wget` is not available:

`curl https://raw.githubusercontent.com/maffblaster/maffblaster-overlay/master/maffblaster.conf --output /etc/portage/repos.conf/maffblaster.conf`

Then use `emaint` to sync the repository:

`emaint sync --repo maffblaster`

#### eselect repository

Requires [eselect-repository](https://packages.gentoo.org/packages/app-eselect/eselect-repository) to be installed:

`eselect repository add maffblaster git https://github.com/maffblaster/maffblaster-overlay.git`

### Removal

#### Manual

`rm /etc/portage/repos.conf/maffblaster.conf`

#### eselect repository

`eselect repository remove maffblaster` 
