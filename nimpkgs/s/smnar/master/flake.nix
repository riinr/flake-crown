{
  description = ''Servicio Meteorologico Nacional Argentina API Client'';
  inputs.src-smnar-master.flake = false;
  inputs.src-smnar-master.type = "github";
  inputs.src-smnar-master.owner = "juancarlospaco";
  inputs.src-smnar-master.repo = "nim-smnar";
  inputs.src-smnar-master.ref = "refs/heads/master";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-smnar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-smnar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-smnar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}