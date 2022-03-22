{
  description = ''nimjson generates nim object definitions from json documents.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimjson-v1_1_0.flake = false;
  inputs.src-nimjson-v1_1_0.owner = "jiro4989";
  inputs.src-nimjson-v1_1_0.ref   = "v1_1_0";
  inputs.src-nimjson-v1_1_0.repo  = "nimjson";
  inputs.src-nimjson-v1_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v1_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimjson-v1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}