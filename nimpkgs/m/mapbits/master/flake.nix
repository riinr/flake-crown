{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mapbits-master.flake = false;
  inputs.src-mapbits-master.owner = "jlp765";
  inputs.src-mapbits-master.ref   = "refs/heads/master";
  inputs.src-mapbits-master.repo  = "mapbits";
  inputs.src-mapbits-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mapbits-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mapbits-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}