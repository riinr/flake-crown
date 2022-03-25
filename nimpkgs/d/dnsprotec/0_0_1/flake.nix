{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnsprotec-0_0_1.flake = false;
  inputs.src-dnsprotec-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-dnsprotec-0_0_1.owner = "juancarlospaco";
  inputs.src-dnsprotec-0_0_1.repo  = "nim-dnsprotec";
  inputs.src-dnsprotec-0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnsprotec-0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dnsprotec-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}