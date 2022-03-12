{
  description = ''Netty is a reliable UDP connection for games.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-netty-master.flake = false;
  inputs.src-netty-master.owner = "treeform";
  inputs.src-netty-master.ref   = "refs/heads/master";
  inputs.src-netty-master.repo  = "netty";
  inputs.src-netty-master.type  = "github";
  
  inputs."flatty".dir   = "nimpkgs/f/flatty";
  inputs."flatty".owner = "riinr";
  inputs."flatty".ref   = "flake-pinning";
  inputs."flatty".repo  = "flake-nimble";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-netty-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-netty-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}