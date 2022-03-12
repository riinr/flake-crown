{
  description = ''Zero-wrapping C imports in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-futhark-v0_4_0.flake = false;
  inputs.src-futhark-v0_4_0.owner = "PMunch";
  inputs.src-futhark-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-futhark-v0_4_0.repo  = "futhark";
  inputs.src-futhark-v0_4_0.type  = "github";
  
  inputs."https://github.com/pmunch/libclang-nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/pmunch/libclang-nim".ref   = "master";
  inputs."https://github.com/pmunch/libclang-nim".repo  = "https://github.com/pmunch/libclang-nim";
  inputs."https://github.com/pmunch/libclang-nim".type  = "github";
  inputs."https://github.com/pmunch/libclang-nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/pmunch/libclang-nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termstyle".owner = "nim-nix-pkgs";
  inputs."termstyle".ref   = "master";
  inputs."termstyle".repo  = "termstyle";
  inputs."termstyle".type  = "github";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-futhark-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-futhark-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}