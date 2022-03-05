{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimjson-v2_0_0.flake = false;
  inputs.src-nimjson-v2_0_0.type = "github";
  inputs.src-nimjson-v2_0_0.owner = "jiro4989";
  inputs.src-nimjson-v2_0_0.repo = "nimjson";
  inputs.src-nimjson-v2_0_0.ref = "refs/tags/v2.0.0";
  inputs.src-nimjson-v2_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimjson-v2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjson-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimjson-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}