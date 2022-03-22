{
  description = ''Wrapper for the GnuTLS library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gnutls-master.flake = false;
  inputs.src-gnutls-master.owner = "FedericoCeratto";
  inputs.src-gnutls-master.ref   = "master";
  inputs.src-gnutls-master.repo  = "nim-gnutls";
  inputs.src-gnutls-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gnutls-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gnutls-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}