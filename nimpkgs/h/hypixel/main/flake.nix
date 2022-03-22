{
  description = ''The Hypixel API, in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hypixel-main.flake = false;
  inputs.src-hypixel-main.owner = "tonogram";
  inputs.src-hypixel-main.ref   = "main";
  inputs.src-hypixel-main.repo  = "hypixel-nim";
  inputs.src-hypixel-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hypixel-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hypixel-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}