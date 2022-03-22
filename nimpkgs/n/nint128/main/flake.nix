{
  description = ''128-bit integers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nint128-main.flake = false;
  inputs.src-nint128-main.owner = "rockcavera";
  inputs.src-nint128-main.ref   = "main";
  inputs.src-nint128-main.repo  = "nim-nint128";
  inputs.src-nint128-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nint128-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nint128-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}