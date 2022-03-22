{
  description = ''procedures for reading, writing, parsing, and stringifying CSV (comma separated value) files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csv-master.flake = false;
  inputs.src-csv-master.ref   = "refs/heads/master";
  inputs.src-csv-master.owner = "achesak";
  inputs.src-csv-master.repo  = "nim-csv";
  inputs.src-csv-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csv-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-csv-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}