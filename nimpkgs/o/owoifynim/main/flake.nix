{
  description = ''Turning your worst nightmare into a Nim package. This is a Nim port of mohan-cao's owoify-js, which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-owoifynim-main.flake = false;
  inputs.src-owoifynim-main.owner = "deadshot465";
  inputs.src-owoifynim-main.ref   = "main";
  inputs.src-owoifynim-main.repo  = "owoifynim";
  inputs.src-owoifynim-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-owoifynim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-owoifynim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}