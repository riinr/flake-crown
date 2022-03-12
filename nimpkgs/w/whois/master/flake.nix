{
  description = ''A simple and free whois client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-whois-master.flake = false;
  inputs.src-whois-master.owner = "Thisago";
  inputs.src-whois-master.ref   = "refs/heads/master";
  inputs.src-whois-master.repo  = "whois.nim";
  inputs.src-whois-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-whois-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-whois-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}