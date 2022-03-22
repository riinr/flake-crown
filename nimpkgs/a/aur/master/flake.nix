{
  description = ''A client for the Arch Linux User Repository (AUR)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aur-master.flake = false;
  inputs.src-aur-master.ref   = "refs/heads/master";
  inputs.src-aur-master.owner = "hnicke";
  inputs.src-aur-master.repo  = "aur.nim";
  inputs.src-aur-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aur-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aur-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}