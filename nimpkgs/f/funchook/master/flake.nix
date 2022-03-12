{
  description = ''funchook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-funchook-master.flake = false;
  inputs.src-funchook-master.owner = "ba0f3";
  inputs.src-funchook-master.ref   = "refs/heads/master";
  inputs.src-funchook-master.repo  = "funchook.nim";
  inputs.src-funchook-master.type  = "github";
  
  inputs."https://github.com/ba0f3/distorm3.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/ba0f3/distorm3.nim".ref   = "master";
  inputs."https://github.com/ba0f3/distorm3.nim".repo  = "https://github.com/ba0f3/distorm3.nim";
  inputs."https://github.com/ba0f3/distorm3.nim".type  = "github";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/ba0f3/distorm3.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-funchook-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-funchook-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}