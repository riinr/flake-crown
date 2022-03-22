{
  description = ''Record and replay your HTTP sessions!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cassette-master.flake = false;
  inputs.src-cassette-master.ref   = "refs/heads/master";
  inputs.src-cassette-master.owner = "LemonBoy";
  inputs.src-cassette-master.repo  = "cassette";
  inputs.src-cassette-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cassette-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cassette-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}