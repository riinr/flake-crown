{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-neel-v0_3_0.flake = false;
  inputs.src-neel-v0_3_0.type = "github";
  inputs.src-neel-v0_3_0.owner = "Niminem";
  inputs.src-neel-v0_3_0.repo = "Neel";
  inputs.src-neel-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, flakeNimbleLib, src-neel-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neel-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neel-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}