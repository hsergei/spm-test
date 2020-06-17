for F in formula-test*; do
  (cd ${F}; spm build .)
done

formula="test"
db="/var/cache/salt/spm/packages.db"

show_spmdb() {
    echo ========== spm info ===========
    spm info ${formula}
    echo ========== packages ===========
    sqlite3 ${db} "select package,version,release from packages where package=\"${formula}\""
    echo =========== files =============
    sqlite3 ${db} "select path,sum from files where package=\"${formula}\""
    echo ======== files on disk ========
    ls -1 /srv/spm/salt/test
    echo ===============================
}

rm -rf ${db} /srv/spm/salt/*

spm local install -f -y /srv/spm_build/${formula}-0.1-0.spm

show_spmdb

spm local install -f -y /srv/spm_build/${formula}-0.2-0.spm

show_spmdb

spm remove -f -y ${formula}

show_spmdb
