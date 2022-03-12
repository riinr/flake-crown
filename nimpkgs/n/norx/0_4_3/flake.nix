{
  description = ''A wrapper of the ORX 2.5D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norx-0_4_3.flake = false;
  inputs.src-norx-0_4_3.owner = "gokr";
  inputs.src-norx-0_4_3.ref   = "refs/tags/0.4.3";
  inputs.src-norx-0_4_3.repo  = "norx";
  inputs.src-norx-0_4_3.type  = "github";
  
  inputs."https://github.com/yglukhov/android".dir   = "nimpkgs/h/https://github.com/yglukhov/android";
  inputs."https://github.com/yglukhov/android".owner = "riinr";
  inputs."https://github.com/yglukhov/android".ref   = "flake-pinning";
  inputs."https://github.com/yglukhov/android".repo  = "flake-nimble";
  inputs."https://github.com/yglukhov/android".type  = "github";
  inputs."https://github.com/yglukhov/android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norx-0_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norx-0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}