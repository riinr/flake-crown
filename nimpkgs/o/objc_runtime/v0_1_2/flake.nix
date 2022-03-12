{
  description = ''objective-c runtime bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-objc_runtime-v0_1_2.flake = false;
  inputs.src-objc_runtime-v0_1_2.owner = "bung87";
  inputs.src-objc_runtime-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-objc_runtime-v0_1_2.repo  = "objc_runtime";
  inputs.src-objc_runtime-v0_1_2.type  = "github";
  
  inputs."https://github.com/yglukhov/darwin".dir   = "nimpkgs/h/https://github.com/yglukhov/darwin";
  inputs."https://github.com/yglukhov/darwin".owner = "riinr";
  inputs."https://github.com/yglukhov/darwin".ref   = "flake-pinning";
  inputs."https://github.com/yglukhov/darwin".repo  = "flake-nimble";
  inputs."https://github.com/yglukhov/darwin".type  = "github";
  inputs."https://github.com/yglukhov/darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-objc_runtime-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-objc_runtime-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}