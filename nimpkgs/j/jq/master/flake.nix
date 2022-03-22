{
  description = ''Fast JSON parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jq-master.flake = false;
  inputs.src-jq-master.owner = "alialrahahleh";
  inputs.src-jq-master.ref   = "master";
  inputs.src-jq-master.repo  = "fjq";
  inputs.src-jq-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jq-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jq-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}