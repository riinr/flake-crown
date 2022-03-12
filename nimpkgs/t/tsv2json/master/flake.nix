{
  description = ''Turn TSV file or stream into JSON file or stream'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tsv2json-master.flake = false;
  inputs.src-tsv2json-master.owner = "hectormonacci";
  inputs.src-tsv2json-master.ref   = "refs/heads/master";
  inputs.src-tsv2json-master.repo  = "tsv2json";
  inputs.src-tsv2json-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tsv2json-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tsv2json-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}