{
  description = ''Compile time localization for applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-localize-0_2.flake = false;
  inputs.src-localize-0_2.owner = "levovix0";
  inputs.src-localize-0_2.ref   = "refs/tags/0.2";
  inputs.src-localize-0_2.repo  = "localize";
  inputs.src-localize-0_2.type  = "github";
  
  inputs."fusion".dir   = "nimpkgs/f/fusion";
  inputs."fusion".owner = "riinr";
  inputs."fusion".ref   = "flake-pinning";
  inputs."fusion".repo  = "flake-nimble";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-localize-0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-localize-0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}