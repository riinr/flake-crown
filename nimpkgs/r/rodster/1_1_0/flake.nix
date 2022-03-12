{
  description = ''rodster'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rodster-1_1_0.flake = false;
  inputs.src-rodster-1_1_0.owner = "j-a-s-d";
  inputs.src-rodster-1_1_0.ref   = "refs/tags/1.1.0";
  inputs.src-rodster-1_1_0.repo  = "rodster";
  inputs.src-rodster-1_1_0.type  = "github";
  
  inputs."xam".dir   = "nimpkgs/x/xam";
  inputs."xam".owner = "riinr";
  inputs."xam".ref   = "flake-pinning";
  inputs."xam".repo  = "flake-nimble";
  inputs."xam".type  = "github";
  inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rodster-1_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rodster-1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}