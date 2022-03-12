{
  description = ''Stupid simple YAML-like implementation from YAML to JsonNode'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nyml-main.flake = false;
  inputs.src-nyml-main.owner = "openpeep";
  inputs.src-nyml-main.ref   = "refs/heads/main";
  inputs.src-nyml-main.repo  = "nyml";
  inputs.src-nyml-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nyml-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nyml-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}