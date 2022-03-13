{
  description = ''miniupnpc and libnatpmp wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nat_traversal-master.flake = false;
  inputs.src-nat_traversal-master.owner = "status-im";
  inputs.src-nat_traversal-master.ref   = "refs/heads/master";
  inputs.src-nat_traversal-master.repo  = "nim-nat-traversal";
  inputs.src-nat_traversal-master.type  = "github";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nat_traversal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nat_traversal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}