{
  description = ''Retrieve info about a location from an IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-freegeoip-master.flake = false;
  inputs.src-freegeoip-master.owner = "achesak";
  inputs.src-freegeoip-master.ref   = "refs/heads/master";
  inputs.src-freegeoip-master.repo  = "nim-freegeoip";
  inputs.src-freegeoip-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-freegeoip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-freegeoip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}