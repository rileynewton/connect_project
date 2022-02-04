plan connect_project::pdb_facts(String $certname){
    return puppetdb_fact([$certname])
}