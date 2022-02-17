{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';
  inputs.src-py2nim-v0_1_0.flake = false;
  inputs.src-py2nim-v0_1_0.type = "github";
  inputs.src-py2nim-v0_1_0.owner = "Niminem";
  inputs.src-py2nim-v0_1_0.repo = "Py2Nim";
  inputs.src-py2nim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."nimscripter".type = "github";
  inputs."nimscripter".owner = "riinr";
  inputs."nimscripter".repo = "flake-nimble";
  inputs."nimscripter".ref = "flake-pinning";
  inputs."nimscripter".dir = "nimpkgs/n/nimscripter";

  outputs = { self, nixpkgs, src-py2nim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-py2nim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-py2nim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}