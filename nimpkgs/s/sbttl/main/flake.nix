{
  description = ''read & write subtitle files with sbttl'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sbttl-main.flake = false;
  inputs.src-sbttl-main.ref   = "refs/heads/main";
  inputs.src-sbttl-main.owner = "hamidb80";
  inputs.src-sbttl-main.repo  = "sbttl";
  inputs.src-sbttl-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sbttl-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sbttl-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}