{
  description = ''nimjson generates nim object definitions from json documents.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimjson-master.flake = false;
  inputs.src-nimjson-master.owner = "jiro4989";
  inputs.src-nimjson-master.ref   = "master";
  inputs.src-nimjson-master.repo  = "nimjson";
  inputs.src-nimjson-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimjson-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}