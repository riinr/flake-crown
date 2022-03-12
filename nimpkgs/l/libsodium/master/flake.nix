{
  description = ''libsodium wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libsodium-master.flake = false;
  inputs.src-libsodium-master.owner = "FedericoCeratto";
  inputs.src-libsodium-master.ref   = "refs/heads/master";
  inputs.src-libsodium-master.repo  = "nim-libsodium";
  inputs.src-libsodium-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libsodium-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libsodium-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}