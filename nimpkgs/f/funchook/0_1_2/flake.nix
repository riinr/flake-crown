{
  description = ''funchook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-funchook-0_1_2.flake = false;
  inputs.src-funchook-0_1_2.owner = "ba0f3";
  inputs.src-funchook-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-funchook-0_1_2.repo  = "funchook.nim";
  inputs.src-funchook-0_1_2.type  = "github";
  
  inputs."https://github.com/ba0f3/distorm3.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/ba0f3/distorm3.nim".ref   = "master";
  inputs."https://github.com/ba0f3/distorm3.nim".repo  = "https://github.com/ba0f3/distorm3.nim";
  inputs."https://github.com/ba0f3/distorm3.nim".type  = "github";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-funchook-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-funchook-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}