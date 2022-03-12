{
  description = ''soundex algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-soundex-master.flake = false;
  inputs.src-soundex-master.owner = "Kashiwara0205";
  inputs.src-soundex-master.ref   = "refs/heads/master";
  inputs.src-soundex-master.repo  = "soundex";
  inputs.src-soundex-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-soundex-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-soundex-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}