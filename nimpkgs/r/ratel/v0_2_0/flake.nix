{
  description = ''Zero-cost abstractions for microcontrollers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ratel-v0_2_0.flake = false;
  inputs.src-ratel-v0_2_0.owner = "PMunch";
  inputs.src-ratel-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-ratel-v0_2_0.repo  = "ratel";
  inputs.src-ratel-v0_2_0.type  = "github";
  
  inputs."nimscripter".dir   = "nimpkgs/n/nimscripter";
  inputs."nimscripter".owner = "riinr";
  inputs."nimscripter".ref   = "flake-pinning";
  inputs."nimscripter".repo  = "flake-nimble";
  inputs."nimscripter".type  = "github";
  inputs."nimscripter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimscripter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler".dir   = "nimpkgs/c/compiler";
  inputs."compiler".owner = "riinr";
  inputs."compiler".ref   = "flake-pinning";
  inputs."compiler".repo  = "flake-nimble";
  inputs."compiler".type  = "github";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ratel-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ratel-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}