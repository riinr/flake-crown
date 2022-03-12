{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-py2nim-v0_1_2.flake = false;
  inputs.src-py2nim-v0_1_2.owner = "Niminem";
  inputs.src-py2nim-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-py2nim-v0_1_2.repo  = "Py2Nim";
  inputs.src-py2nim-v0_1_2.type  = "github";
  
  inputs."compiler".dir   = "nimpkgs/c/compiler";
  inputs."compiler".owner = "riinr";
  inputs."compiler".ref   = "flake-pinning";
  inputs."compiler".repo  = "flake-nimble";
  inputs."compiler".type  = "github";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimscripter".dir   = "nimpkgs/n/nimscripter";
  inputs."nimscripter".owner = "riinr";
  inputs."nimscripter".ref   = "flake-pinning";
  inputs."nimscripter".repo  = "flake-nimble";
  inputs."nimscripter".type  = "github";
  inputs."nimscripter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimscripter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-py2nim-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-py2nim-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}