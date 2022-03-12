{
  description = ''Hashicorp Vault HTTP Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vaultclient-master.flake = false;
  inputs.src-vaultclient-master.owner = "jackhftang";
  inputs.src-vaultclient-master.ref   = "refs/heads/master";
  inputs.src-vaultclient-master.repo  = "vaultclient.nim";
  inputs.src-vaultclient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vaultclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vaultclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}