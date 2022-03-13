{
  description = ''Unsafe in-place slicing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-memviews-master.flake = false;
  inputs.src-memviews-master.owner = "ReneSac";
  inputs.src-memviews-master.ref   = "refs/heads/master";
  inputs.src-memviews-master.repo  = "memviews";
  inputs.src-memviews-master.type  = "github";
  
  inputs."c_alikes".owner = "nim-nix-pkgs";
  inputs."c_alikes".ref   = "master";
  inputs."c_alikes".repo  = "c_alikes";
  inputs."c_alikes".type  = "github";
  inputs."c_alikes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c_alikes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-memviews-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-memviews-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}